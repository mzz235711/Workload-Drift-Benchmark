/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<163 AND p.CommentCount>14 AND p.CommentCount<44 AND u.DownVotes>177 AND u.DownVotes<493 AND v.CreationDate>'2012-08-08 10:38:45'::timestamp AND v.CreationDate<'2014-08-03 17:16:44'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-06-17 07:13:49'::timestamp AND b.Date<'2013-03-31 02:51:28'::timestamp;

