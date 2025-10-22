/*+ MergeJoin(p ph u)
 MergeJoin(ph u)
 IndexScan(p)
 SeqScan(ph)
 IndexScan(u)
 Leading((p (ph u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=5 AND ph.CreationDate='2014-06-25 12:34:46'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.CreationDate>='2010-09-12 16:24:34'::timestamp AND p.CreationDate<='2014-09-01 13:41:17'::timestamp AND u.Reputation<=111 AND u.Views>=0 AND u.CreationDate<='2014-08-19 01:07:19'::timestamp;

