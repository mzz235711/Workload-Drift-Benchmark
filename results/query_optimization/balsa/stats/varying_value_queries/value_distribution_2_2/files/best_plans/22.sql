/*+ HashJoin(b u p v)
 NestLoop(u p v)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 Leading((b ((u p) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<133 AND p.CommentCount>2 AND p.CommentCount<41 AND u.DownVotes>363 AND u.DownVotes<1795 AND v.CreationDate>'2009-07-15 00:58:29'::timestamp AND v.CreationDate<'2012-10-21 21:36:27'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2013-11-19 18:05:29'::timestamp AND b.Date<'2014-02-21 21:01:37'::timestamp;

