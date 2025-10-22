/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<133 AND p.CommentCount>14 AND p.CommentCount<41 AND u.DownVotes>717 AND u.DownVotes<1345 AND v.CreationDate>'2010-09-01 01:11:38'::timestamp AND v.CreationDate<'2013-07-19 15:11:27'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2010-10-01 17:24:45'::timestamp AND b.Date<'2011-07-25 09:32:56'::timestamp;

