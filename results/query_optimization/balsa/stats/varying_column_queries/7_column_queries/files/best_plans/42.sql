/*+ HashJoin(v b p u)
 HashJoin(b p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 Leading((v (b (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND b.Date>='2010-08-11 15:19:54'::timestamp AND b.Date<='2014-09-09 02:46:20'::timestamp AND u.Reputation>=1 AND u.Reputation<=171 AND u.DownVotes>=0;

