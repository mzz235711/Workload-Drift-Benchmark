/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<116 AND p.CommentCount>17 AND p.CommentCount<40 AND u.DownVotes>580 AND u.DownVotes<1214 AND v.CreationDate>'2009-02-24 23:09:11'::timestamp AND v.CreationDate<'2013-03-27 06:58:50'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2012-01-31 17:05:38'::timestamp AND b.Date<'2013-04-02 15:56:26'::timestamp;

