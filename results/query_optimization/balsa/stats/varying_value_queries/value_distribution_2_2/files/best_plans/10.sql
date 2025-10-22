/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<31 AND p.CommentCount>4 AND p.CommentCount<38 AND u.DownVotes>22 AND u.DownVotes<87 AND v.CreationDate>'2011-05-01 22:26:31'::timestamp AND v.CreationDate<'2013-07-24 19:38:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2011-04-27 10:29:31'::timestamp AND b.Date<'2012-10-16 10:16:36'::timestamp;

