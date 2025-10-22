/*+ NestLoop(p u c)
 HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 IndexScan(c)
 Leading(((p u) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.CreationDate<='2014-09-10 01:18:54'::timestamp AND p.CommentCount>=0 AND p.FavoriteCount<=12 AND u.Views>=0 AND u.Views<=19 AND u.UpVotes=1;

