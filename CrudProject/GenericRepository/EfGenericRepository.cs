using CrudProject.GenericRepository.Abstract;
using CrudProject.Models;
using System.Linq.Expressions;

namespace CrudProject.GenericRepository
{
    public class EfGenericRepository<TEntity> : IGenericRepository<TEntity> where TEntity : class
    {
        private readonly OctaPullContext _context;

        public EfGenericRepository(OctaPullContext context)
        {
            _context = context;
        }

        public void Create(TEntity entity)
        {
            _context.Add(entity);

        }

        public void Delete(TEntity entity)
        {
            _context.Remove(entity);

        }

        public IEnumerable<TEntity> GetAll()
        {
            return _context.Set<TEntity>().ToList();
        }

        public TEntity GetById(int id)
        {
            return _context.Set<TEntity>().Find(id);
        }

        public void Update(TEntity entity)
        {
            _context.Update(entity);
        }

        public TEntity Where(Expression<Func<TEntity, bool>> predicate)
        {
            IQueryable<TEntity> query = _context.Set<TEntity>();
            query = query.Where(predicate);
            return query.FirstOrDefault();
        }
    }
}
