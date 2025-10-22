/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<125 AND p.CommentCount>0 AND p.CommentCount<21 AND u.DownVotes>291 AND u.DownVotes<1261 AND v.CreationDate>'2010-08-29 22:07:03'::timestamp AND v.CreationDate<'2013-04-30 11:03:31'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2011-01-06 06:37:07'::timestamp AND b.Date<'2011-03-01 03:45:33'::timestamp;

