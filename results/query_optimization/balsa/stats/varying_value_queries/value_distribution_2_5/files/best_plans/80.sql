/*+ NestLoop(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>83 AND p.Score<104 AND p.CommentCount>6 AND p.CommentCount<25 AND u.DownVotes>314 AND u.DownVotes<1216 AND v.CreationDate>'2009-02-14 11:28:12'::timestamp AND v.CreationDate<'2014-06-18 19:22:51'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2011-03-02 07:58:03'::timestamp AND b.Date<'2012-08-23 02:32:02'::timestamp;

