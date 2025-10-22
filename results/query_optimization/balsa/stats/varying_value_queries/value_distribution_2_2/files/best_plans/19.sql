/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<141 AND p.CommentCount>0 AND p.CommentCount<13 AND u.DownVotes>250 AND u.DownVotes<1219 AND v.CreationDate>'2012-10-04 13:27:54'::timestamp AND v.CreationDate<'2013-09-13 01:06:36'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2010-10-13 10:14:36'::timestamp AND b.Date<'2011-04-10 00:07:40'::timestamp;

