/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<25 AND p.CommentCount>6 AND p.CommentCount<30 AND u.DownVotes>72 AND u.DownVotes<464 AND v.CreationDate>'2012-07-21 15:00:40'::timestamp AND v.CreationDate<'2012-08-31 09:10:29'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2011-04-14 23:26:50'::timestamp AND b.Date<'2013-05-20 08:44:30'::timestamp;

