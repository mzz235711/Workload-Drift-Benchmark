/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<26 AND p.CommentCount>8 AND p.CommentCount<35 AND u.DownVotes>363 AND u.DownVotes<1165 AND v.CreationDate>'2012-05-18 20:20:00'::timestamp AND v.CreationDate<'2013-07-26 18:11:59'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<9 AND b.Date>'2013-02-09 19:32:09'::timestamp AND b.Date<'2013-06-24 12:23:56'::timestamp;

