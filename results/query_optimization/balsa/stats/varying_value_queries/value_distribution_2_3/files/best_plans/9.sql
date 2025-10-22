/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<30 AND p.CommentCount>0 AND p.CommentCount<18 AND u.DownVotes>309 AND u.DownVotes<1582 AND v.CreationDate>'2010-06-10 09:40:58'::timestamp AND v.CreationDate<'2012-08-19 08:56:25'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<6 AND b.Date>'2013-03-17 14:08:26'::timestamp AND b.Date<'2014-04-08 22:09:27'::timestamp;

