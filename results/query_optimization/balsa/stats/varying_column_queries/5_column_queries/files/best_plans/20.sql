/*+ MergeJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date<='2014-09-03 12:54:54'::timestamp AND p.Score>=0 AND p.ViewCount<=7243 AND p.CommentCount>=0 AND p.CommentCount<=12;

