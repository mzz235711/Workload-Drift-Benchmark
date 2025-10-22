/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<110 AND p.CommentCount>15 AND p.CommentCount<30 AND u.DownVotes>715 AND u.DownVotes<1554 AND v.CreationDate>'2011-09-02 04:49:43'::timestamp AND v.CreationDate<'2013-06-27 04:55:52'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-06-23 00:01:54'::timestamp AND b.Date<'2012-08-13 18:42:09'::timestamp;

