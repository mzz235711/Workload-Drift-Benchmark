/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<175 AND p.CommentCount>8 AND p.CommentCount<19 AND u.DownVotes>460 AND u.DownVotes<807 AND v.CreationDate>'2013-01-31 14:15:49'::timestamp AND v.CreationDate<'2014-04-20 08:10:41'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2010-12-19 17:01:22'::timestamp AND b.Date<'2012-03-26 14:20:53'::timestamp;

