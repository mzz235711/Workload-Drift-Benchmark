/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<43 AND p.CommentCount>10 AND p.CommentCount<29 AND u.DownVotes>378 AND u.DownVotes<1457 AND v.CreationDate>'2010-04-02 15:29:17'::timestamp AND v.CreationDate<'2013-01-25 07:35:48'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<12 AND b.Date>'2012-06-09 14:27:37'::timestamp AND b.Date<'2012-11-29 23:33:29'::timestamp;

