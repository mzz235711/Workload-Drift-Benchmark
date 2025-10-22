/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=3948 AND p.CommentCount>=0 AND p.CommentCount<=10 AND p.CreationDate>='2010-09-02 05:45:28'::timestamp AND p.CreationDate<='2014-09-08 16:16:17'::timestamp;

