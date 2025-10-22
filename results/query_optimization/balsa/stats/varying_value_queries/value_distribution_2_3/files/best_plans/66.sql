/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<82 AND p.CommentCount>13 AND p.CommentCount<29 AND u.DownVotes>111 AND u.DownVotes<1415 AND v.CreationDate>'2013-10-27 18:50:15'::timestamp AND v.CreationDate<'2014-02-16 23:24:58'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2012-03-13 18:36:44'::timestamp AND b.Date<'2013-11-05 06:13:40'::timestamp;

