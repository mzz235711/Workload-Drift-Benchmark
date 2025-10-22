/*+ NestLoop(u b p v)
 NestLoop(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 IndexScan(p)
 IndexScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>19 AND p.Score<111 AND p.CommentCount>2 AND p.CommentCount<44 AND u.DownVotes>699 AND u.DownVotes<909 AND v.CreationDate>'2011-02-23 15:21:10'::timestamp AND v.CreationDate<'2011-10-01 20:03:23'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2014-05-19 08:35:28'::timestamp AND b.Date<'2014-05-31 15:15:32'::timestamp;

