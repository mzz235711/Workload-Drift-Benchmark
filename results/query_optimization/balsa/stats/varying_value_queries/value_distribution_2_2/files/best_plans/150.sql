/*+ MergeJoin(b u p v)
 NestLoop(u p v)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 Leading((b ((u p) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>48 AND p.Score<68 AND p.CommentCount>3 AND p.CommentCount<35 AND u.DownVotes>79 AND u.DownVotes<349 AND v.CreationDate>'2010-10-02 04:41:12'::timestamp AND v.CreationDate<'2014-05-26 05:44:27'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2010-08-29 07:17:05'::timestamp AND b.Date<'2011-12-27 15:01:47'::timestamp;

