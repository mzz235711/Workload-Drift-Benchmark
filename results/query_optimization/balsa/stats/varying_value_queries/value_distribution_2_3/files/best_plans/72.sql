/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<73 AND p.CommentCount>15 AND p.CommentCount<41 AND u.DownVotes>207 AND u.DownVotes<1069 AND v.CreationDate>'2011-03-15 10:52:26'::timestamp AND v.CreationDate<'2013-06-17 04:14:56'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2010-11-28 00:19:39'::timestamp AND b.Date<'2012-03-05 18:21:23'::timestamp;

