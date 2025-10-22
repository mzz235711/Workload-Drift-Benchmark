/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<71 AND p.CommentCount>2 AND p.CommentCount<13 AND u.DownVotes>130 AND u.DownVotes<266 AND v.CreationDate>'2013-01-22 04:02:50'::timestamp AND v.CreationDate<'2013-05-18 23:43:12'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2012-05-24 17:41:04'::timestamp AND b.Date<'2014-02-08 14:07:44'::timestamp;

