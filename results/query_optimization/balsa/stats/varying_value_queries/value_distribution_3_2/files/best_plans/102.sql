/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>17 AND p.Score<122 AND p.CommentCount>14 AND p.CommentCount<32 AND u.DownVotes>140 AND u.DownVotes<625 AND v.CreationDate>'2010-04-24 13:42:15'::timestamp AND v.CreationDate<'2011-03-03 08:05:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2010-08-29 15:56:12'::timestamp AND b.Date<'2012-05-31 23:03:08'::timestamp;

