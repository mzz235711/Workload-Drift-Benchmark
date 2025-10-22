/*+ HashJoin(b p u v)
 NestLoop(p u v)
 NestLoop(p u)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 IndexScan(v)
 Leading((b ((p u) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=0 AND p.CommentCount<=8 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-07 00:09:59'::timestamp AND u.Reputation=1 AND u.DownVotes>=0 AND u.DownVotes<=0;

