/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<177 AND p.CommentCount>3 AND p.CommentCount<27 AND u.DownVotes>729 AND u.DownVotes<1376 AND v.CreationDate>'2011-08-30 11:01:42'::timestamp AND v.CreationDate<'2012-05-16 00:42:09'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2013-08-19 12:00:19'::timestamp AND b.Date<'2014-04-19 23:10:29'::timestamp;

