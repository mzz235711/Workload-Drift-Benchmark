/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<84 AND p.CommentCount>6 AND p.CommentCount<22 AND u.DownVotes>192 AND u.DownVotes<886 AND v.CreationDate>'2011-09-07 05:13:12'::timestamp AND v.CreationDate<'2014-02-25 02:49:55'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<14 AND b.Date>'2010-08-02 14:31:52'::timestamp AND b.Date<'2014-05-18 01:39:21'::timestamp;

