/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>46 AND p.Score<88 AND p.CommentCount>4 AND p.CommentCount<14 AND u.DownVotes>242 AND u.DownVotes<1067 AND v.CreationDate>'2012-07-06 02:01:46'::timestamp AND v.CreationDate<'2013-06-26 05:04:26'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2011-11-24 04:55:51'::timestamp AND b.Date<'2013-05-04 22:29:29'::timestamp;

