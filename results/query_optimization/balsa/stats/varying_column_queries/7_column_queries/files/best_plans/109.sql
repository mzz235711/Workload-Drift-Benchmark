/*+ HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-08-16 11:45:12'::timestamp AND c.CreationDate<='2014-09-12 09:31:23'::timestamp AND p.CommentCount<=9 AND p.FavoriteCount<=16 AND p.CreationDate<='2014-09-11 18:07:50'::timestamp AND u.Views>=0 AND u.Views<=38;

