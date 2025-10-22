/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<135 AND p.CommentCount>16 AND p.CommentCount<23 AND u.DownVotes>600 AND u.DownVotes<1909 AND v.CreationDate>'2009-04-23 01:22:11'::timestamp AND v.CreationDate<'2012-01-28 17:47:14'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2011-09-21 05:54:54'::timestamp AND b.Date<'2012-09-27 12:54:45'::timestamp;

