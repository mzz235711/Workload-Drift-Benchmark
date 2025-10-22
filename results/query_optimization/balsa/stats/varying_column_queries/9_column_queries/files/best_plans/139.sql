/*+ HashJoin(ph b u p c)
 MergeJoin(ph b u p)
 HashJoin(b u p)
 HashJoin(u p)
 IndexScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(c)
 Leading(((ph (b (u p))) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND p.Score=1 AND p.ViewCount<=2627 AND p.CommentCount>=0 AND p.FavoriteCount=0 AND ph.PostHistoryTypeId=5 AND b.Date>='2010-07-19 20:49:06'::timestamp AND b.Date<='2014-09-10 01:43:11'::timestamp AND u.Views>=0 AND u.DownVotes>=0;

