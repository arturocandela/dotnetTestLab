using System;
using Xunit;

using lib;

namespace testLib
{
    public class UnitTest1
    {
        [Fact]
        public void Test1()
        {

            Class1 class1 = new Class1();
            Assert.Equal("Hello",class1.Hello);

        }
    }
}
