/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<60 AND p.CommentCount>3 AND p.CommentCount<12 AND u.DownVotes>77 AND u.DownVotes<105 AND v.CreationDate>'2009-07-28 04:28:41'::timestamp AND v.CreationDate<'2013-08-27 13:59:48'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<9 AND b.Date>'2011-02-17 04:03:11'::timestamp AND b.Date<'2012-06-19 09:42:41'::timestamp;

