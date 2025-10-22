/*+ HashJoin(ph u b p c)
 MergeJoin(ph u b p)
 NestLoop(u b p)
 MergeJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 IndexScan(p)
 SeqScan(c)
 Leading(((ph ((u b) p)) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND p.Score<=43 AND p.ViewCount>=0 AND p.ViewCount<=1209 AND p.CommentCount=0 AND p.FavoriteCount=0 AND p.CreationDate>='2010-07-20 04:16:52'::timestamp AND p.CreationDate<='2014-09-11 11:58:50'::timestamp AND ph.CreationDate<='2014-07-23 06:08:13'::timestamp AND u.Views>=0 AND u.DownVotes=0;

