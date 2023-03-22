using DevExtreme.AspNet.Data;
using DevExtreme.AspNet.Mvc;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.ModelBinding;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading.Tasks;
using CrudProject.Models;

namespace CrudProject.Controllers
{
    [Route("api/[controller]/[action]")]
    public class DataProtectionKeysController : Controller
    {
        private OctaPullContext _context;

        public DataProtectionKeysController(OctaPullContext context) {
            _context = context;
        }

        [HttpGet]  
        public async Task<IActionResult> Get(DataSourceLoadOptions loadOptions) {
            var dataprotectionkeys = _context.DataProtectionKeys.Select(i => new {
                i.Id,
                i.FriendlyName,
                i.Xml
            });

            // If underlying data is a large SQL table, specify PrimaryKey and PaginateViaPrimaryKey.
            // This can make SQL execution plans more efficient.
            // For more detailed information, please refer to this discussion: https://github.com/DevExpress/DevExtreme.AspNet.Data/issues/336.
            // loadOptions.PrimaryKey = new[] { "Id" };
            // loadOptions.PaginateViaPrimaryKey = true;

            return Json(await DataSourceLoader.LoadAsync(dataprotectionkeys, loadOptions));
        }

        [HttpPost]
        public async Task<IActionResult> Post(string values) {
            var model = new DataProtectionKey();
            var valuesDict = JsonConvert.DeserializeObject<IDictionary>(values);
            PopulateModel(model, valuesDict);

            if(!TryValidateModel(model))
                return BadRequest(GetFullErrorMessage(ModelState));

            var result = _context.DataProtectionKeys.Add(model);
            await _context.SaveChangesAsync();

            return Json(new { result.Entity.Id });
        }

        [HttpPut]
        public async Task<IActionResult> Put(int key, string values) {
            var model = await _context.DataProtectionKeys.FirstOrDefaultAsync(item => item.Id == key);
            if(model == null)
                return StatusCode(409, "Object not found");

            var valuesDict = JsonConvert.DeserializeObject<IDictionary>(values);
            PopulateModel(model, valuesDict);

            if(!TryValidateModel(model))
                return BadRequest(GetFullErrorMessage(ModelState));

            await _context.SaveChangesAsync();
            return Ok();
        }

        [HttpDelete]
        public async Task Delete(int key) {
            var model = await _context.DataProtectionKeys.FirstOrDefaultAsync(item => item.Id == key);

            _context.DataProtectionKeys.Remove(model);
            await _context.SaveChangesAsync();
        }


        private void PopulateModel(DataProtectionKey model, IDictionary values) {
            string ID = nameof(DataProtectionKey.Id);
            string FRİENDLY_NAME = nameof(DataProtectionKey.FriendlyName);
            string XML = nameof(DataProtectionKey.Xml);

            if(values.Contains(ID)) {
                model.Id = Convert.ToInt32(values[ID]);
            }

            if(values.Contains(FRİENDLY_NAME)) {
                model.FriendlyName = Convert.ToString(values[FRİENDLY_NAME]);
            }

            if(values.Contains(XML)) {
                model.Xml = Convert.ToString(values[XML]);
            }
        }

        private string GetFullErrorMessage(ModelStateDictionary modelState) {
            var messages = new List<string>();

            foreach(var entry in modelState) {
                foreach(var error in entry.Value.Errors)
                    messages.Add(error.ErrorMessage);
            }

            return String.Join(" ", messages);
        }
    }
}