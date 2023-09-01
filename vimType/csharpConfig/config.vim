
function! InsertHelloWorld()
  " Check if the file type is .cs and filename contains 'Tests'
  if &filetype == 'cs' && expand('%:t') =~ 'Tests'
    " Insert 'Hello world' at the cursor position
 	let template = [
    	\ "using NUnit.Framework;",
    	\ "",
    	\ "namespace YourNamespace.Tests",
    	\ "{",
    	\ "    [TestFixture]",
    	\ "    public class YourClassTests",
    	\ "    {",
    	\ "        [Test]",
    	\ "        public void TestMethod1()",
    	\ "        {",
    	\ "        }",
    	\ "    }",
    	\ "}"
    	\ ]

    " Insert template at the cursor position
    call append(line('.'), template)	
  endif
endfunction

" Call InsertHelloWorld() when F1 is pressed in normal mode
nnoremap ztt :call InsertHelloWorld()<CR>

