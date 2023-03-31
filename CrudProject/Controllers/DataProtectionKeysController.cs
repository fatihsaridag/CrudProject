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
using CrudProject.Controllers.GenericBaseController;
using CrudProject.GenericRepository;

namespace CrudProject.Controllers
{
    public class DataProtectionKeysController : BaseController<DataProtectionKey>
    {
        public DataProtectionKeysController(IGenericRepository<DataProtectionKey> genericRepository, OctaPullContext context) : base(genericRepository, context)
        {
        }
    }
}