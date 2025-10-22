/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>31 AND p.Score<187 AND p.CommentCount>1 AND p.CommentCount<43 AND u.DownVotes>536 AND u.DownVotes<1393 AND v.CreationDate>'2014-04-06 21:43:47'::timestamp AND v.CreationDate<'2014-08-26 20:31:46'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<6 AND b.Date>'2013-06-22 23:21:17'::timestamp AND b.Date<'2014-07-21 05:30:03'::timestamp;

