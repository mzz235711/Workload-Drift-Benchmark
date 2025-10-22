/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<5 AND p.CommentCount>5 AND p.CommentCount<31 AND u.DownVotes>342 AND u.DownVotes<1052 AND v.CreationDate>'2011-12-10 07:49:24'::timestamp AND v.CreationDate<'2014-01-20 01:33:58'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2012-02-18 06:21:10'::timestamp AND b.Date<'2014-08-24 12:38:45'::timestamp;

