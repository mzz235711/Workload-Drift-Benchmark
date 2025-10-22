/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<146 AND p.CommentCount>0 AND p.CommentCount<18 AND u.DownVotes>593 AND u.DownVotes<1221 AND v.CreationDate>'2013-09-12 02:22:05'::timestamp AND v.CreationDate<'2013-12-02 12:07:10'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<6 AND b.Date>'2011-10-12 17:12:54'::timestamp AND b.Date<'2012-04-07 19:17:37'::timestamp;

