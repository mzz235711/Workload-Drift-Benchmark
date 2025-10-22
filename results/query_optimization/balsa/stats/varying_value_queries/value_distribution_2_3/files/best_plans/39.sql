/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>24 AND p.Score<158 AND p.CommentCount>5 AND p.CommentCount<18 AND u.DownVotes>1 AND u.DownVotes<1272 AND v.CreationDate>'2012-08-13 15:44:17'::timestamp AND v.CreationDate<'2012-10-04 22:38:58'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<7 AND b.Date>'2011-01-13 08:58:04'::timestamp AND b.Date<'2013-09-28 20:19:30'::timestamp;

