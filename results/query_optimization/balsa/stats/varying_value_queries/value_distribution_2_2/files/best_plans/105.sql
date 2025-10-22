/*+ MergeJoin(b u p v)
 NestLoop(u p v)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 Leading((b ((u p) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<169 AND p.CommentCount>4 AND p.CommentCount<34 AND u.DownVotes>306 AND u.DownVotes<748 AND v.CreationDate>'2010-02-13 10:45:50'::timestamp AND v.CreationDate<'2014-07-25 14:00:34'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-09-12 01:24:46'::timestamp AND b.Date<'2013-01-27 00:42:13'::timestamp;

