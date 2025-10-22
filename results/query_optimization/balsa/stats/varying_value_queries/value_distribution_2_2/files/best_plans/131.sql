/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<145 AND p.CommentCount>5 AND p.CommentCount<35 AND u.DownVotes>350 AND u.DownVotes<371 AND v.CreationDate>'2011-02-03 00:28:21'::timestamp AND v.CreationDate<'2012-01-26 04:13:16'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-06-04 19:58:23'::timestamp AND b.Date<'2012-04-09 12:13:45'::timestamp;

