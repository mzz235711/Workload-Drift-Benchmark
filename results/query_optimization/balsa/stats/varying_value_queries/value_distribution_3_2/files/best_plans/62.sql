/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<182 AND p.CommentCount>1 AND p.CommentCount<26 AND u.DownVotes>507 AND u.DownVotes<1324 AND v.CreationDate>'2010-07-03 04:18:05'::timestamp AND v.CreationDate<'2012-04-25 06:35:49'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2013-05-02 00:53:19'::timestamp AND b.Date<'2014-02-03 05:36:26'::timestamp;

