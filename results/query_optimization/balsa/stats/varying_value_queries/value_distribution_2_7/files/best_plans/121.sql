/*+ MergeJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<89 AND p.CommentCount>2 AND p.CommentCount<44 AND u.DownVotes>291 AND u.DownVotes<565 AND v.CreationDate>'2010-04-02 21:24:32'::timestamp AND v.CreationDate<'2012-08-05 15:42:33'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<12 AND b.Date>'2011-01-03 08:20:01'::timestamp AND b.Date<'2013-02-09 13:48:00'::timestamp;

