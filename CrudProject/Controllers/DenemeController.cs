//using Microsoft.AspNetCore.Mvc;

//namespace CrudProject.Controllers
//{
//    public class ContactsMasterDetayController : AlphaApiController<ContactsMasterDetay>, IAlphaApiController<ContactsMasterDetay>
//    {
//        /// <summary>
//        /// configuration ataması
//        /// </summary>
//        /// <param name="configuration"></param>
//        /// <param name="redisCacheService"></param>
//        public ContactsMasterDetayController(IConfiguration configuration, IRedisCacheService redisCacheService) : base(configuration, redisCacheService)
//        {
//        }

//        /// <summary>
//        /// Amac Yazılmalı 
//        /// </summary>
//        /// <param name="modulesEntities">Oluşturulacak Kayıt bilgileri</param>
//        /// <returns></returns>
//        [HttpPost("Create")]
//        public override async Task<IActionResult> Create([FromBody] ContactsMasterDetay modulesEntities)
//        {
//            return await base.Create(modulesEntities);
//        }

//        /// <summary>
//        /// Amac Yazılmalı 
//        /// </summary>
//        /// <param name="modulesEntities">Oluşturulacak Kayıt bilgileri</param>
//        /// <returns></returns>
//        [HttpPost("Update")]
//        public override async Task<IActionResult> Update([FromBody] ContactsMasterDetay modulesEntities)
//        {
//            return await base.Update(modulesEntities);
//        }

//        /// <summary>
//        /// Amac Yazılmalı
//        /// </summary>
//        /// <param name="id">Silinecek Kaydın id değeri</param>
//        /// <returns></returns>
//        [HttpPost("Delete/{id}")]
//        public override async Task<IActionResult> Delete(long id)
//        {
//            return await base.Delete(id);
//        }

//        /// <summary>
//        /// Tüm Kayıtların gelmesini sağlar
//        /// </summary>
//        /// <returns></returns>
//        [HttpGet("Get")]
//        public override async Task<IActionResult> Get()
//        {
//            //Kapatılmalı
//            return await base.Get();
//        }

//        /// <summary>
//        /// Id ye göre kaydın gelmesini sağlar
//        /// </summary>
//        /// <returns></returns>
//        [HttpGet("GetById/{Id}")]
//        public override async Task<IActionResult> GetById(long Id)
//        {
//            return await base.GetById(Id);
//        }

//        /// <summary>
//        /// Listeler için kayıtların gelmesini saglar
//        /// </summary>
//        /// <param name="item"></param>
//        /// <returns></returns>
//        [HttpPost("GetWithFilter")]
//        public override async Task<IActionResult> GetWithFilter([FromBody] GeneralFilter item)
//        {
//            return await base.GetWithFilter(item);
//        }
//    }
//}
