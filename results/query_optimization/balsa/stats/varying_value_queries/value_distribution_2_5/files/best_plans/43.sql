/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<14 AND p.CommentCount>7 AND p.CommentCount<11 AND u.DownVotes>539 AND u.DownVotes<1207 AND v.CreationDate>'2012-04-03 05:46:49'::timestamp AND v.CreationDate<'2012-10-30 12:41:32'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2012-07-29 01:45:30'::timestamp AND b.Date<'2013-05-27 01:52:12'::timestamp;

