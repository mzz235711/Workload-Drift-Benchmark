/*+ NestLoop(p u b v)
 NestLoop(p u b)
 NestLoop(p u)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 IndexScan(v)
 Leading((((p u) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<191 AND p.CommentCount>15 AND p.CommentCount<33 AND u.DownVotes>763 AND u.DownVotes<1308 AND v.CreationDate>'2009-04-23 11:03:44'::timestamp AND v.CreationDate<'2011-09-29 21:35:54'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2012-02-01 05:13:08'::timestamp AND b.Date<'2013-06-16 22:28:38'::timestamp;

