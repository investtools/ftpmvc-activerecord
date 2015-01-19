require 'ftpmvc/filter/base'

module FTPMVC
  module Filter
    class ActiveRecord < Base
      def get(path)
        ::ActiveRecord::Base.connection_pool.with_connection do
          @chain.get(path)
        end
      end

      def index(path)
        ::ActiveRecord::Base.connection_pool.with_connection do
          @chain.index(path)
        end
      end

      def directory?(path)
        ::ActiveRecord::Base.connection_pool.with_connection do
          @chain.directory?(path)
        end
      end

      def exists?(path)
        ::ActiveRecord::Base.connection_pool.with_connection do
          @chain.exists?(path)
        end
      end

      def put(path, stream)
        ::ActiveRecord::Base.connection_pool.with_connection do
          @chain.put(path, stream)
        end
      end
    end
  end
end
