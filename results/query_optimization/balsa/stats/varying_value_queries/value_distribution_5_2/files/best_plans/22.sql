/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>17 AND p.Score<56 AND p.CommentCount>10 AND p.CommentCount<15 AND u.DownVotes>99 AND u.DownVotes<1723 AND v.CreationDate>'2010-05-07 16:48:04'::timestamp AND v.CreationDate<'2011-03-14 06:20:49'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2011-02-14 10:35:26'::timestamp AND b.Date<'2011-11-23 06:49:45'::timestamp;

