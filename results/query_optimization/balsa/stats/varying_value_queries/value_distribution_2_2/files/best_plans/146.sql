/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<45 AND p.CommentCount>4 AND p.CommentCount<37 AND u.DownVotes>538 AND u.DownVotes<1821 AND v.CreationDate>'2010-10-16 00:08:32'::timestamp AND v.CreationDate<'2014-03-22 11:08:57'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2012-06-11 04:39:38'::timestamp AND b.Date<'2014-03-20 11:21:31'::timestamp;

