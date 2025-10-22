/*+ MergeJoin(b u p v)
 NestLoop(u p v)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 Leading((b ((u p) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>25 AND p.Score<49 AND p.CommentCount>6 AND p.CommentCount<13 AND u.DownVotes>281 AND u.DownVotes<1149 AND v.CreationDate>'2011-03-12 17:36:31'::timestamp AND v.CreationDate<'2014-08-07 08:56:22'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2013-03-10 07:38:06'::timestamp AND b.Date<'2014-01-12 14:30:35'::timestamp;

