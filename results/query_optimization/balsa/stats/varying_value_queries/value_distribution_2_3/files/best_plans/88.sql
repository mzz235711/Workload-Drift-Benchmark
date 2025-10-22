/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<49 AND p.CommentCount>3 AND p.CommentCount<21 AND u.DownVotes>278 AND u.DownVotes<1880 AND v.CreationDate>'2011-04-17 17:22:15'::timestamp AND v.CreationDate<'2012-07-16 16:35:21'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2011-10-28 19:34:53'::timestamp AND b.Date<'2013-05-10 18:20:35'::timestamp;

