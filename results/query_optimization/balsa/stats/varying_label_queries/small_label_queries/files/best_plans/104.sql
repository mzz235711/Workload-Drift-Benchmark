/*+ NestLoop(p v u ph)
 HashJoin(p v u)
 HashJoin(p v)
 SeqScan(p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(ph)
 Leading((((p v) u) ph)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.CreationDate>='2012-01-28 12:45:52'::timestamp AND ph.CreationDate<='2014-08-25 17:05:57'::timestamp AND p.Score>=0 AND p.CommentCount>=0 AND p.CommentCount<=19 AND p.FavoriteCount>=0 AND v.VoteTypeId=2 AND v.CreationDate='2012-07-11 00:00:00'::timestamp AND u.Views<=28 AND u.DownVotes>=0 AND u.UpVotes>=0;

