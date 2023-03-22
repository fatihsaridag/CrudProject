using System.Linq.Expressions;

namespace CrudProject.GenericRepository
{
    public interface IGenericRepository<TEntity>
    {
        void Create(TEntity entity);
        void Update(TEntity entity);
        void Delete(TEntity entity);
        TEntity GetById(long id);
        IEnumerable<TEntity> GetAll();
        TEntity Where(Expression<Func<TEntity, bool>> predicate);

    }
}
