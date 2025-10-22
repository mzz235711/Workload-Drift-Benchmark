/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<148 AND p.CommentCount>6 AND p.CommentCount<27 AND u.DownVotes>9 AND u.DownVotes<559 AND v.CreationDate>'2009-11-23 13:17:34'::timestamp AND v.CreationDate<'2012-10-15 09:30:31'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2010-11-21 11:40:38'::timestamp AND b.Date<'2014-01-30 02:12:58'::timestamp;

