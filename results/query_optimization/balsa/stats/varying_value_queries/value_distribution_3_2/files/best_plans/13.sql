/*+ NestLoop(u b p v)
 NestLoop(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 IndexScan(p)
 IndexScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>34 AND p.Score<102 AND p.CommentCount>6 AND p.CommentCount<34 AND u.DownVotes>194 AND u.DownVotes<794 AND v.CreationDate>'2014-05-11 06:07:15'::timestamp AND v.CreationDate<'2014-08-11 00:51:21'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2013-04-23 00:46:07'::timestamp AND b.Date<'2013-05-01 19:45:58'::timestamp;

