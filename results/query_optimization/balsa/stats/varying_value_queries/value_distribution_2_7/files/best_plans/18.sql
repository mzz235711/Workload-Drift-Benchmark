/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<145 AND p.CommentCount>11 AND p.CommentCount<36 AND u.DownVotes>528 AND u.DownVotes<1389 AND v.CreationDate>'2012-02-18 19:13:12'::timestamp AND v.CreationDate<'2014-03-04 01:27:18'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<13 AND b.Date>'2010-07-22 02:10:20'::timestamp AND b.Date<'2010-12-16 19:35:55'::timestamp;

