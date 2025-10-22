/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<123 AND p.CommentCount>16 AND p.CommentCount<25 AND u.DownVotes>473 AND u.DownVotes<890 AND v.CreationDate>'2011-03-10 22:21:49'::timestamp AND v.CreationDate<'2013-02-16 05:22:55'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2010-09-21 03:46:16'::timestamp AND b.Date<'2014-01-01 21:02:59'::timestamp;

