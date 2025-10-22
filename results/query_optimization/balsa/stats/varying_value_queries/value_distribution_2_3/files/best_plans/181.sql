/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<94 AND p.CommentCount>14 AND p.CommentCount<34 AND u.DownVotes>155 AND u.DownVotes<908 AND v.CreationDate>'2011-06-15 16:51:24'::timestamp AND v.CreationDate<'2011-06-23 17:14:34'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2013-08-23 08:01:41'::timestamp AND b.Date<'2014-07-05 17:48:40'::timestamp;

